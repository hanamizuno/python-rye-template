ARG PYTHON_BASE_IMAGE="python"
FROM ${PYTHON_BASE_IMAGE}:3.12 AS rye

ENV PYTHONPATH="/workspace/src:$PYTHONPATH"
WORKDIR /workspace

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN \
  --mount=type=cache,target=/var/lib/apt/lists \
  --mount=type=cache,target=/var/cache/apt/archives \
  apt-get update \
  && apt-get install -y --no-install-recommends build-essential

ENV RYE_HOME="/opt/rye"
ENV PATH="$RYE_HOME/shims:$PATH"

RUN curl -sSf https://rye.astral.sh/get | RYE_NO_AUTO_INSTALL=1 RYE_INSTALL_OPTION="--yes" bash

COPY pyproject.toml requirements.lock requirements-dev.lock .python-version README.md ./
RUN rye config --set-bool behavior.use-uv=true
RUN rye sync --no-lock

EXPOSE 8000

COPY . .

CMD ["rye", "run", "python"]
