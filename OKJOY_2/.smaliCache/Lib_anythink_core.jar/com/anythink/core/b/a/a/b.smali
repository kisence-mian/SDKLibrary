.class public abstract Lcom/anythink/core/b/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/anythink/core/b/a/a/b;->f:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lorg/json/JSONObject;
.end method
