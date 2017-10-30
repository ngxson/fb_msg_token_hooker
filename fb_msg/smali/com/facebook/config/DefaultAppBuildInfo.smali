.class public Lcom/facebook/config/DefaultAppBuildInfo;
.super Ljava/lang/Object;
.source "DefaultAppBuildInfo.java"

# interfaces
.implements Lcom/facebook/config/AppBuildInfo;


# instance fields
.field private final a:Landroid/content/pm/PackageInfo;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/config/DefaultAppBuildInfo;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/config/DefaultAppBuildInfo;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method
