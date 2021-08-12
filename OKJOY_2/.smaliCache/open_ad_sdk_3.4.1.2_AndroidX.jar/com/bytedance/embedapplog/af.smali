.class Lcom/bytedance/embedapplog/af;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 21
    iput-object p1, p0, Lcom/bytedance/embedapplog/af;->e:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .line 27
    iget-object v0, p0, Lcom/bytedance/embedapplog/af;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/bl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "access"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 p1, 0x1

    return p1
.end method
