#!/usr/bin/env bash

TARGETFILE=$1
LINENUM=$2
CHARNUM=$3

VSCODEBIN=$(cat $HOME/.config/vscode/code_binary_location)
VSCODESOCK=$(cat $HOME/.config/vscode/vscode_ipc_hook_map)

export VSCODE_IPC_HOOK_CLI=$VSCODESOCK

$VSCODEBIN --goto $TARGETFILE:$LINENUM:$CHARNUM
