function hideDialogOnSuccess(args, dialog) {
	if (args && !args.validationFailed)
		PF(dialog).hide();
}

// Show dialogs only on sucess
function showDialogOnSuccess(args, dialog) {
	if (args && !args.validationFailed)
		PF(dialog).show();
}