.class public final enum Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;
.super Ljava/lang/Enum;
.source "MediaDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

.field public static final enum DECODE_ERROR:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

.field public static final enum IO_EXCEPTION:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

.field public static final enum NOT_FOUND:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

.field public static final enum OTHER:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

.field public static final enum SUCCESS:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

.field public static final enum UNSUPPORTED_URI:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 35
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    const-string v1, "IO_EXCEPTION"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 36
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    const-string v1, "DECODE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 37
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 38
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    const-string v1, "UNSUPPORTED_URI"

    invoke-direct {v0, v1, v7}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->UNSUPPORTED_URI:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 39
    new-instance v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->OTHER:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    sget-object v1, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->SUCCESS:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->UNSUPPORTED_URI:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->OTHER:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->$VALUES:[Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->$VALUES:[Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    invoke-virtual {v0}, [Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    return-object v0
.end method
