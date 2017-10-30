.class public Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "LeaveThreadDialogFragment.java"


# instance fields
.field private Y:Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;)Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;->Y:Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;->Y:Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$LeaveThreadListener;

    .line 50
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/R$string;->thread_leave_confirm_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->thread_leave_confirm_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->thread_leave_confirm_ok_button:I

    new-instance v2, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$2;-><init>(Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->dialog_cancel:I

    new-instance v2, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/mutators/LeaveThreadDialogFragment$1;-><init>(Lcom/facebook/orca/mutators/LeaveThreadDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
