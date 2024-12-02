FROM debian

RUN apt update && apt install -y \
    sudo \
	git \
	vim-gtk3 \
	curl \
	wget \
	htop \
	tree
RUN update-alternatives --set editor $(which vim.gtk3)

ARG UID
ARG GID
ARG USER_NAME
ARG GROUP_NAME
RUN groupadd -g $GID ${GROUP_NAME} -f && \
    useradd -m -s /bin/bash -u ${UID} -g ${GID} ${USER_NAME} && \
    echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ${USER_NAME}
WORKDIR /workspace
