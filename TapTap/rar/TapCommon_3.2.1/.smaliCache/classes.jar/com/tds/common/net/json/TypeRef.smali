.class public Lcom/tds/common/net/json/TypeRef;
.super Ljava/lang/Object;
.source "TypeRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final type:Ljava/lang/reflect/ParameterizedType;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 8
    .local p0, "this":Lcom/tds/common/net/json/TypeRef;, "Lcom/tds/common/net/json/TypeRef<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    iput-object v0, p0, Lcom/tds/common/net/json/TypeRef;->type:Ljava/lang/reflect/ParameterizedType;

    .line 10
    return-void
.end method
