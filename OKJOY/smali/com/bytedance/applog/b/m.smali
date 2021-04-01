.class Lcom/bytedance/applog/b/m;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0, v0}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 20
    iput-object p1, p0, Lcom/bytedance/applog/b/m;->e:Landroid/content/Context;

    .line 21
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
    .line 26
    iget-object v0, p0, Lcom/bytedance/applog/b/m;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "access"

    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method
