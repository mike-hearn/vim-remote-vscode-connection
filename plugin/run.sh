#!/usr/bin/env bash

TARGETFILE=$1
LINENUM=$2
CHARNUM=$3

VSCODEBIN=$(cat $HOME/.config/vscode/code_binary_location)
VSCODESOCK=$(grep -oP "$(basename $(tmux display-message -p "#S"))=\K.*" ~/.config/vscode/vscode_ipc_hook_map)

export VSCODE_IPC_HOOK_CLI=$VSCODESOCK

$VSCODEBIN --goto $TARGETFILE:$LINENUM:$CHARNUM
