.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;
.super Ljava/lang/Object;
.source "EmojiAttachmentPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Z)Z

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "/messages/audio/auto_send_audio_recording"

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;->b:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->e(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    return-void
.end method
