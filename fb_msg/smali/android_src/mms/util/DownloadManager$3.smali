.class Landroid_src/mms/util/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid_src/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Landroid_src/mms/util/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Landroid_src/mms/util/DownloadManager$3;->a:Landroid_src/mms/util/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Landroid_src/mms/util/DownloadManager$3;->a:Landroid_src/mms/util/DownloadManager;

    invoke-static {v0}, Landroid_src/mms/util/DownloadManager;->a(Landroid_src/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->service_message_not_found:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    return-void
.end method
