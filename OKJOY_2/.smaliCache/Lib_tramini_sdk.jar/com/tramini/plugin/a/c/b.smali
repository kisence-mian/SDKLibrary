.class public final Lcom/tramini/plugin/a/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    const-string v1, "att_pl"

    iget v2, p0, Lcom/tramini/plugin/a/c/b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    const-string v1, "att_ver"

    iget-object v2, p0, Lcom/tramini/plugin/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "att_inf"

    iget-object v2, p0, Lcom/tramini/plugin/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 28
    return-object v0

    .line 29
    :catch_1b
    move-exception v0

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
