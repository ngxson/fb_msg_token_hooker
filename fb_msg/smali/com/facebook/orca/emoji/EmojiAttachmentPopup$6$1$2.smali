.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

.field private b:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    iget v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;->b:I

    .line 339
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    iget-object v0, v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->g(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6$1$2;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/StringLocaleUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method
