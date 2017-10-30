.class public Lcom/facebook/contacts/iterator/DbContactIteratorParams;
.super Ljava/lang/Object;
.source "DbContactIteratorParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lcom/facebook/contacts/iterator/DbContactIteratorParams;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/database/sqlite/SQLiteQueryBuilder;

.field private final d:[Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->b:[Ljava/lang/String;

    .line 22
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 23
    const-string v0, "contacts"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;

    sget-object v2, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->a:Lcom/facebook/contacts/iterator/DbContactIteratorParams;

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->c:Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 53
    iput-object p2, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->d:[Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->e:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->f:[Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->g:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->h:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->i:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->c:Landroid/database/sqlite/SQLiteQueryBuilder;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->i:Ljava/lang/String;

    return-object v0
.end method
