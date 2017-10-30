.class Landroid_src/mms/util/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid_src/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Landroid_src/mms/util/DownloadManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Landroid_src/mms/util/DownloadManager$5;->b:Landroid_src/mms/util/DownloadManager;

    iput p2, p0, Landroid_src/mms/util/DownloadManager$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Landroid_src/mms/util/DownloadManager$5;->b:Landroid_src/mms/util/DownloadManager;

    invoke-static {v0}, Landroid_src/mms/util/DownloadManager;->a(Landroid_src/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid_src/mms/util/DownloadManager$5;->a:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v0, "DownloadManager"

    const-string v1, "Caught an exception in showErrorCodeToast"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
