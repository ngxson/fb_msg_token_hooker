.class public Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;
.super Lcom/facebook/orca/activity/FbMapActivity;
.source "ThreadViewMapActivityTabImpl.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/app/OrcaAppType;

.field private c:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private e:Lcom/facebook/orca/threads/ThreadSnippetUtil;

.field private f:Lcom/facebook/orca/emoji/EmojiUtil;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/google/android/maps/MapView;

.field private n:Lcom/facebook/orca/threadview/ThreadViewFragment;

.field private o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

.field private p:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

.field private q:Lcom/google/android/maps/MyLocationOverlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbMapActivity;-><init>()V

    .line 347
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;)",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/high16 v4, -0x8000

    .line 236
    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v5

    move v2, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/GeoPoint;

    .line 242
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    .line 245
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 246
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 248
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-ge v6, v5, :cond_3

    .line 249
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    .line 251
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    goto :goto_0

    .line 256
    :cond_4
    add-int v0, v3, v2

    div-int/lit8 v6, v0, 0x2

    .line 257
    add-int v0, v5, v4

    div-int/lit8 v7, v0, 0x2

    .line 259
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;-><init>(Lcom/google/android/maps/GeoPoint;IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/OverlayItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Lcom/google/android/maps/OverlayItem;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/OverlayItem;)V
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 383
    if-nez p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 387
    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    .line 388
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->a()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 391
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_1

    .line 395
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threads/ThreadSnippetUtil;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Lcom/facebook/orca/emoji/EmojiUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Landroid/text/Spannable;I)V

    .line 397
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide v11, 0x412e848000000000L

    .line 171
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 172
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 173
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    .line 174
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 178
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->c(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 185
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 186
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/users/UserKey;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/threads/Message;

    .line 189
    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 190
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v1, v3

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v3, v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 192
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->f()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 193
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v1, v7}, Lcom/facebook/orca/threads/ThreadSnippetUtil;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/GeoPoint;FLjava/lang/String;Ljava/lang/String;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/Message;)V

    .line 199
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->a(Ljava/util/List;)V

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-virtual {v0, v9}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a(Ljava/util/List;)V

    .line 206
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 207
    invoke-direct {p0, v8}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Ljava/util/List;)Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    .line 209
    iget-object v2, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->a:Lcom/google/android/maps/GeoPoint;

    .line 210
    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 212
    iget v2, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->b:I

    iget v3, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->c:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 213
    iget v3, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->d:I

    iget v0, v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->e:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 214
    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->q:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Lcom/facebook/orca/threadview/ZoomOverlay;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/threadview/ZoomOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 227
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 89
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->b(Landroid/os/Bundle;)V

    .line 91
    sget v0, Lcom/facebook/R$layout;->orca_thread_view_map_tab:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->thread_view_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    .line 95
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 96
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a:Lcom/facebook/orca/cache/DataCache;

    .line 97
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    .line 98
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 99
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 100
    const-class v0, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->e:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    .line 101
    const-class v0, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->f:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 103
    sget v0, Lcom/facebook/R$id;->thread_view_map_frame:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Landroid/widget/FrameLayout;

    .line 104
    sget v0, Lcom/facebook/R$id;->thread_view_user_overlay:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->h:Landroid/widget/RelativeLayout;

    .line 105
    sget v0, Lcom/facebook/R$id;->thread_view_map_user_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->i:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 106
    sget v0, Lcom/facebook/R$id;->thread_view_map_user_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->j:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/facebook/R$id;->thread_view_map_user_snippet:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->k:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/facebook/R$id;->thread_view_map_user_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->l:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    sget v2, Lcom/facebook/R$drawable;->orca_map_member_marker:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->o:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberItemizedOverlay;->setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V

    .line 119
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;-><init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->p:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;

    .line 123
    new-instance v0, Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/threadview/FixedMyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->q:Lcom/google/android/maps/MyLocationOverlay;

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->m:Lcom/google/android/maps/MapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 133
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "thread_view_map"

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragment;->E()V

    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onDestroy()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->n:Lcom/facebook/orca/threadview/ThreadViewFragment;

    .line 141
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->q:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/facebook/orca/activity/FbMapActivity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->q:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 149
    :cond_0
    return-void
.end method
