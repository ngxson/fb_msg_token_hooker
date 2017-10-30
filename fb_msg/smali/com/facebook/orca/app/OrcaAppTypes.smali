.class public Lcom/facebook/orca/app/OrcaAppTypes;
.super Ljava/lang/Object;
.source "OrcaAppTypes.java"


# static fields
.field public static final a:Lcom/facebook/orca/app/OrcaAppType;

.field public static final b:Lcom/facebook/orca/app/OrcaAppType;

.field public static final c:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 12
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType;

    const-string v1, "dev"

    const-string v2, "181425161904154"

    const-string v3, "29695f68d8dfa9d6a9cb4662735c9aff"

    const-string v4, "95a15d22a0e735b2983ecb9759dbaf91"

    const-string v5, "0Epu2R1k3kzphWNK4vJ0qRvHKKMR4jZxJ0vNcIA"

    const-string v6, "5AqL33yKnSxZ13FivtuBs_NY_wI"

    const-string v7, "https://developers.facebook.com"

    sget-object v8, Lcom/facebook/orca/app/IntendedAudience;->DEVELOPMENT:Lcom/facebook/orca/app/IntendedAudience;

    sget-object v9, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/app/IntendedAudience;Lcom/facebook/orca/app/OrcaAppType$Product;)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppTypes;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 23
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType;

    const-string v1, "in-house"

    const-string v2, "105910932827969"

    const-string v3, "3fd89d7c8cf293c5c6db88444077422f"

    const-string v4, "201f1a1fa4998b746f7b531e6434c224"

    const-string v5, "0e1ruJ7mZbBXS0h1Ffa7wWK4SMcshAyydjcm1qg"

    const-string v6, "pLdFLi7Y9fGRBYynu_0msNMhS_w"

    const-string v7, "https://m.facebook.com/mobile_builds"

    sget-object v8, Lcom/facebook/orca/app/IntendedAudience;->FACEBOOK:Lcom/facebook/orca/app/IntendedAudience;

    sget-object v9, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/app/IntendedAudience;Lcom/facebook/orca/app/OrcaAppType$Product;)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppTypes;->b:Lcom/facebook/orca/app/OrcaAppType;

    .line 34
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType;

    const-string v1, "prod"

    const-string v2, "256002347743983"

    const-string v3, "256002347743983"

    const-string v4, "374e60f8b9bb6b8cbb30f78030438895"

    const-string v5, "0e1ruJ7mZbBWslnLnQQ5RPITlJs7QBrg8JYbTyg"

    const-string v6, "c_0Yh6T3lvD4FVtzlEnJKk94sDY"

    const-string v7, "https://market.android.com/details?id=com.facebook.orca"

    sget-object v8, Lcom/facebook/orca/app/IntendedAudience;->PUBLIC:Lcom/facebook/orca/app/IntendedAudience;

    sget-object v9, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/app/IntendedAudience;Lcom/facebook/orca/app/OrcaAppType$Product;)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppTypes;->c:Lcom/facebook/orca/app/OrcaAppType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
