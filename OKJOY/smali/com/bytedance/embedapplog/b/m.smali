.class Lcom/bytedance/embedapplog/b/m;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 21
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/m;->e:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/m;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "access"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method
