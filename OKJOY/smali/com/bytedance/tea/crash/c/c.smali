.class public Lcom/bytedance/tea/crash/c/c;
.super Ljava/lang/Object;
.source "UploadRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bytedance/tea/crash/c/c;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bytedance/tea/crash/c/c;->b:Lorg/json/JSONObject;

    .line 41
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/bytedance/tea/crash/c/c;->d:Z

    .line 57
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/c;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bytedance/tea/crash/c/c;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/c/c;->d:Z

    return v0
.end method
