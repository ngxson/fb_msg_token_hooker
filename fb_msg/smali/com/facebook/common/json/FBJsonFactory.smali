.class public Lcom/facebook/common/json/FBJsonFactory;
.super Lcom/fasterxml/jackson/core/JsonFactory;
.source "FBJsonFactory.java"


# static fields
.field public static final a:Lcom/facebook/common/json/FBJsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/facebook/common/json/FBJsonFactory;

    invoke-direct {v0}, Lcom/facebook/common/json/FBJsonFactory;-><init>()V

    sput-object v0, Lcom/facebook/common/json/FBJsonFactory;->a:Lcom/facebook/common/json/FBJsonFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 12
    return-void
.end method
