.class public abstract Lcom/facebook/content/SecureContentProvider;
.super Landroid/content/ContentProvider;
.source "SecureContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method protected a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/content/SecureContentProvider;->a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 150
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected c(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 158
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/content/SecureContentProvider;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 166
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 199
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 208
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/SecureContentProvider;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 216
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/content/SecureContentProvider;->c(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 224
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 233
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 242
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/PermissionChecks;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/facebook/content/PermissionChecks;->a()V

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/content/SecureContentProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
