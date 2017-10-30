.class public Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
.super Ljava/lang/Object;
.source "TitanAttachmentInfoBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->b:I

    .line 35
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;)Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->f:Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;

    .line 71
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->a:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->b:I

    return v0
.end method

.method public b(I)Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->e:I

    .line 62
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->c:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->d:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->e:I

    return v0
.end method

.method public f()Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;->f:Lcom/facebook/orca/threads/TitanAttachmentInfo$ImageData;

    return-object v0
.end method

.method public g()Lcom/facebook/orca/threads/TitanAttachmentInfo;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/orca/threads/TitanAttachmentInfo;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/TitanAttachmentInfo;-><init>(Lcom/facebook/orca/threads/TitanAttachmentInfoBuilder;)V

    return-object v0
.end method
