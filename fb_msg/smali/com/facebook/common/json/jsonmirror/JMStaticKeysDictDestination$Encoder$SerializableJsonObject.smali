.class public interface abstract annotation Lcom/facebook/common/json/jsonmirror/JMStaticKeysDictDestination$Encoder$SerializableJsonObject;
.super Ljava/lang/Object;
.source "JMStaticKeysDictDestination.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract jsonFieldName()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/common/json/jsonmirror/JMStaticKeysDictDestination;",
            ">;"
        }
    .end annotation
.end method
