.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/Emoji;

.field final synthetic b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Lcom/facebook/orca/emoji/Emoji;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;->a:Lcom/facebook/orca/emoji/Emoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;->a:Lcom/facebook/orca/emoji/Emoji;

    invoke-static {v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Lcom/facebook/orca/emoji/Emoji;)V

    .line 765
    return-void
.end method
