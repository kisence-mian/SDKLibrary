.class Lcom/JoyFramework/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/c/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 203
    iput-object p1, p0, Lcom/JoyFramework/c/d;->b:Lcom/JoyFramework/c/c;

    iput-object p2, p0, Lcom/JoyFramework/c/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 208
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/JoyFramework/c/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v1, "insertAdId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    .line 220
    :goto_c
    return-void

    .line 216
    :catch_d
    move-exception v0

    goto :goto_c
.end method
