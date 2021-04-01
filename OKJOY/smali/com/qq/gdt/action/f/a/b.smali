.class public Lcom/qq/gdt/action/f/a/b;
.super Lcom/qq/gdt/action/c/a;


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a;-><init>()V

    if-nez p2, :cond_18

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    const-string v1, "eventId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_17} :catch_1b

    :goto_17
    return-void

    :cond_18
    iput-object p2, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    goto :goto_c

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/c/c;
    .registers 3

    invoke-virtual {p0}, Lcom/qq/gdt/action/f/a/b;->c()Lcom/qq/gdt/action/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/c/c;->a(Lorg/json/JSONObject;)Lcom/qq/gdt/action/c/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/qq/gdt/action/c/c;)V
    .registers 3

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/a/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
