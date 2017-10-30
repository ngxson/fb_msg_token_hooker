.class Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;
.super Ljava/lang/Object;
.source "ThreadViewMapActivityTabImpl.java"


# instance fields
.field final a:Lcom/google/android/maps/GeoPoint;

.field final b:I

.field final c:I

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/GeoPoint;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->a:Lcom/google/android/maps/GeoPoint;

    .line 280
    iput p2, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->b:I

    .line 281
    iput p3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->c:I

    .line 282
    iput p4, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->d:I

    .line 283
    iput p5, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MapCenter;->e:I

    .line 284
    return-void
.end method
