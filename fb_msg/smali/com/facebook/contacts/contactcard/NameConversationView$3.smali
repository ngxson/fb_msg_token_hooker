.class Lcom/facebook/contacts/contactcard/NameConversationView$3;
.super Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;
.source "NameConversationView.java"


# instance fields
.field final synthetic a:Lcom/facebook/contacts/contactcard/NameConversationView;


# direct methods
.method constructor <init>(Lcom/facebook/contacts/contactcard/NameConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/NameConversationView$3;->a:Lcom/facebook/contacts/contactcard/NameConversationView;

    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadview/ThreadNamePicker$Result;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/facebook/orca/threadview/ThreadNamePicker$Result;->CHANGE:Lcom/facebook/orca/threadview/ThreadNamePicker$Result;

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView$3;->a:Lcom/facebook/contacts/contactcard/NameConversationView;

    invoke-static {v0, p2}, Lcom/facebook/contacts/contactcard/NameConversationView;->a(Lcom/facebook/contacts/contactcard/NameConversationView;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/NameConversationView$3;->a:Lcom/facebook/contacts/contactcard/NameConversationView;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/NameConversationView;->c(Lcom/facebook/contacts/contactcard/NameConversationView;)V

    .line 148
    :cond_0
    return-void
.end method
