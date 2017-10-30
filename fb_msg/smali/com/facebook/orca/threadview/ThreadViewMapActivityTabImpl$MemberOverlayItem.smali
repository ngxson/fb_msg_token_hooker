.class Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;
.super Lcom/google/android/maps/OverlayItem;
.source "ThreadViewMapActivityTabImpl.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;

.field private final b:Lcom/facebook/orca/users/UserKey;

.field private final c:F

.field private final d:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/GeoPoint;FLjava/lang/String;Ljava/lang/String;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;

    .line 299
    invoke-direct {p0, p2, p4, p5}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-object p6, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b:Lcom/facebook/orca/users/UserKey;

    .line 301
    iput p3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->c:F

    .line 302
    iput-object p7, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->d:Lcom/facebook/orca/threads/Message;

    .line 303
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->d:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->c:F

    return v0
.end method
