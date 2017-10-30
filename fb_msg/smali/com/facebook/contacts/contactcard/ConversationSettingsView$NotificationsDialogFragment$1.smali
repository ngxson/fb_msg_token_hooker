.class Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment$1;
.super Ljava/lang/Object;
.source "ConversationSettingsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment$1;->a:Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment$1;->a:Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;

    iget-object v0, v0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-static {v0, p2}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(Lcom/facebook/contacts/contactcard/ConversationSettingsView;I)V

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    return-void
.end method
