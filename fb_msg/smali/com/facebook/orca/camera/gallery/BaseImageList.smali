.class public abstract Lcom/facebook/orca/camera/gallery/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImageList;


# static fields
.field private static final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/regex/Pattern;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:I

.field protected c:Landroid/net/Uri;

.field protected d:Landroid/database/Cursor;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/net/Uri;

.field protected g:Z

.field private final i:Lcom/facebook/orca/camera/gallery/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/camera/gallery/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/camera/gallery/BaseImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/orca/camera/gallery/BaseImageList;

    sput-object v0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Ljava/lang/Class;

    .line 168
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/camera/gallery/BaseImageList;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/facebook/orca/camera/gallery/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/gallery/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Lcom/facebook/orca/camera/gallery/LruCache;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->g:Z

    .line 52
    iput p3, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->b:I

    .line 53
    iput-object p2, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:Landroid/net/Uri;

    .line 54
    iput-object p4, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Landroid/content/ContentResolver;

    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->d()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Ljava/lang/Class;

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/gallery/LruCache;->a()V

    .line 66
    return-void
.end method

.method private static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/facebook/orca/camera/gallery/BaseImageList;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:Landroid/net/Uri;

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 116
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->g:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->g:Z

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 89
    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Ljava/lang/Class;

    const-string v1, "id mismatch"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;
.end method

.method public a(I)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/BaseImage;

    .line 122
    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->g()Landroid/database/Cursor;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    move-object v0, v1

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->a(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;

    move-result-object v0

    .line 129
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    .line 126
    goto :goto_1
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/gallery/BaseImageList;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 199
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->g()Landroid/database/Cursor;

    move-result-object v4

    .line 200
    if-eqz v4, :cond_0

    .line 201
    monitor-enter p0

    .line 202
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {p0, v4}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b(Landroid/database/Cursor;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/BaseImage;

    .line 206
    if-nez v0, :cond_2

    .line 207
    invoke-virtual {p0, v4}, Lcom/facebook/orca/camera/gallery/BaseImageList;->a(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    sget-object v2, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get id in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    :cond_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iput-object v3, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Landroid/content/ContentResolver;

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    iput-object v3, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    .line 80
    :cond_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Ljava/lang/Class;

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->g()Landroid/database/Cursor;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 100
    :cond_0
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract b(Landroid/database/Cursor;)J
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()Landroid/database/Cursor;
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->g:Z

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    iget v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, " ASC"

    .line 234
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
