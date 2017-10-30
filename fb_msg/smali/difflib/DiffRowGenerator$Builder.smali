.class public Ldifflib/DiffRowGenerator$Builder;
.super Ljava/lang/Object;
.source "DiffRowGenerator.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldifflib/DiffRowGenerator$Builder;->a:Z

    .line 59
    iput-boolean v1, p0, Ldifflib/DiffRowGenerator$Builder;->b:Z

    .line 60
    iput-boolean v1, p0, Ldifflib/DiffRowGenerator$Builder;->c:Z

    .line 61
    const-string v0, "span"

    iput-object v0, p0, Ldifflib/DiffRowGenerator$Builder;->d:Ljava/lang/String;

    .line 62
    const-string v0, "span"

    iput-object v0, p0, Ldifflib/DiffRowGenerator$Builder;->e:Ljava/lang/String;

    .line 63
    const-string v0, "editOldInline"

    iput-object v0, p0, Ldifflib/DiffRowGenerator$Builder;->f:Ljava/lang/String;

    .line 64
    const-string v0, "editNewInline"

    iput-object v0, p0, Ldifflib/DiffRowGenerator$Builder;->g:Ljava/lang/String;

    .line 65
    const/16 v0, 0x50

    iput v0, p0, Ldifflib/DiffRowGenerator$Builder;->h:I

    return-void
.end method
