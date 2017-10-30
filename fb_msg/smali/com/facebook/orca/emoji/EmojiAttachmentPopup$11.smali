.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iput p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;->a:I

    invoke-static {v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;I)V

    .line 531
    return-void
.end method
