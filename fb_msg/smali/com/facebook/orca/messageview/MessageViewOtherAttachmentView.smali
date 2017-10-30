.class public Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "MessageViewOtherAttachmentView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/util/FileSizeUtil;

.field private b:Lcom/facebook/orca/attachments/OtherAttachmentData;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/FileSizeUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/FileSizeUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a:Lcom/facebook/orca/common/util/FileSizeUtil;

    .line 50
    sget v0, Lcom/facebook/R$layout;->orca_message_view_other_attachment:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->setContentView(I)V

    .line 51
    sget v0, Lcom/facebook/R$id;->attachment_download:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c:Landroid/widget/Button;

    .line 52
    sget v0, Lcom/facebook/R$id;->attachment_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/facebook/R$id;->attachment_size:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->e:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView$1;-><init>(Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/OtherAttachmentData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a:Lcom/facebook/orca/common/util/FileSizeUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/OtherAttachmentData;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/util/FileSizeUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;->c()Landroid/net/Uri;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/OtherAttachmentData;->d()Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public getAttachmentInfo()Lcom/facebook/orca/attachments/OtherAttachmentData;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    return-object v0
.end method

.method public setAttachmentInfo(Lcom/facebook/orca/attachments/OtherAttachmentData;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    .line 68
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b()V

    .line 69
    return-void
.end method
