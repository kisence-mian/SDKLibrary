.class public Lcom/bytedance/tea/crash/upload/f;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/bytedance/tea/crash/upload/f;->a:I

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/bytedance/tea/crash/upload/f;->a:I

    .line 32
    iput-object p2, p0, Lcom/bytedance/tea/crash/upload/f;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bytedance/tea/crash/upload/f;->a:I

    .line 25
    if-eqz p2, :cond_d

    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/tea/crash/upload/f;->b:Ljava/lang/String;

    .line 28
    :cond_d
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/bytedance/tea/crash/upload/f;->a:I

    .line 37
    iput-object p2, p0, Lcom/bytedance/tea/crash/upload/f;->c:Lorg/json/JSONObject;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 42
    iget v0, p0, Lcom/bytedance/tea/crash/upload/f;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
