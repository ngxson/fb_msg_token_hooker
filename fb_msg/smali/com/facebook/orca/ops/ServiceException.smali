.class public Lcom/facebook/orca/ops/ServiceException;
.super Ljava/lang/Exception;
.source "ServiceException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/ops/ServiceException;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/server/ErrorCode;

.field private final b:Lcom/facebook/orca/server/OperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/orca/ops/ServiceException$1;

    invoke-direct {v0}, Lcom/facebook/orca/ops/ServiceException$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/ops/ServiceException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ErrorCode;

    iput-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->a:Lcom/facebook/orca/server/ErrorCode;

    .line 36
    const-class v0, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OperationResult;

    iput-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->b:Lcom/facebook/orca/server/OperationResult;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/ops/ServiceException$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/ServiceException;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->d()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->d()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->a:Lcom/facebook/orca/server/ErrorCode;

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/ops/ServiceException;->b:Lcom/facebook/orca/server/OperationResult;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/facebook/orca/ops/ServiceException;
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-static {p0}, Lcom/facebook/orca/server/ErrorCodeUtil;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/orca/server/ErrorCodeUtil;->b(Ljava/lang/Throwable;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    return-object v1
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/ErrorCode;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->a:Lcom/facebook/orca/server/ErrorCode;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/server/OperationResult;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->b:Lcom/facebook/orca/server/OperationResult;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->a:Lcom/facebook/orca/server/ErrorCode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/ops/ServiceException;->b:Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    return-void
.end method
