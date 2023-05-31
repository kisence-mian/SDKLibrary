.class public Lcom/qq/gdt/action/ActionUtils;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final CONTENT_NAME:Ljava/lang/String; = "content_name"

.field public static final CONTENT_NUMBER:Ljava/lang/String; = "content_number"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final IS_SUCCESS:Ljava/lang/String; = "is_success"

.field public static final IS_VIRTUAL_CURRENT:Ljava/lang/String; = "is_virtual_currency"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final PAYMENT_AMOUNT:Ljava/lang/String; = "value"

.field public static final PAYMENT_CHANNEL:Ljava/lang/String; = "payment_channel"

.field public static final QUEST_DESC:Ljava/lang/String; = "quest_desc"

.field public static final QUEST_ID:Ljava/lang/String; = "quest_id"

.field public static final QUEST_NAME:Ljava/lang/String; = "quest_name"

.field public static final QUEST_NUMBER:Ljava/lang/String; = "quest_number"

.field public static final QUEST_TYPE:Ljava/lang/String; = "quest_type"

.field public static final RATE_VALUE:Ljava/lang/String; = "rate_value"

.field public static final REAL_CURRENCY_TYPE:Ljava/lang/String; = "real_currency_type"

.field public static final ROLE:Ljava/lang/String; = "role"

.field public static final SHARE_CHANNEL:Ljava/lang/String; = "share_channel"

.field public static final VIRTUAL_CURRENCY_TYPE:Ljava/lang/String; = "virtual_currency_type"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAddPaymentChannel(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "channel"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "payment_channel"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_23

    :goto_1d
    const-string v0, "ADD_PAYMENT"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static onAddToCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "number"    # I
    .param p4, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_30} :catch_36

    :goto_30
    const-string v0, "ADD_TO_CART"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_30
.end method

.method public static onBindAccount(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "method"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_23

    :goto_1d
    const-string v0, "BIND_ACCOUNT"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static onCheckout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "number"    # I
    .param p4, "isVirtualCurrency"    # Z
    .param p5, "virtualCurrencyType"    # Ljava/lang/String;
    .param p6, "currency"    # Ljava/lang/String;
    .param p7, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_virtual_currency"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "virtual_currency_type"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "real_currency_type"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_43} :catch_49

    :goto_43
    const-string v0, "INITIATE_CHECKOUT"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_43
.end method

.method public static onCreateRole(Ljava/lang/String;)V
    .registers 4
    .param p0, "role"    # Ljava/lang/String;

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "role"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_14} :catch_1a

    :goto_14
    const-string v0, "CREATE_ROLE"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14
.end method

.method public static onLogin(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "method"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_23

    :goto_1d
    const-string v0, "LOGIN"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static onPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "number"    # I
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "currency"    # Ljava/lang/String;
    .param p6, "value"    # I
    .param p7, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "payment_channel"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "real_currency_type"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "real_currency_type"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_48} :catch_4e

    :goto_48
    const-string v0, "PURCHASE"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48
.end method

.method public static onQuestFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "quest_id"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quest_type"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quest_name"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quest_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quest_desc"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_35} :catch_3b

    :goto_35
    const-string v0, "QUEST"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_35
.end method

.method public static onRateApp(F)V
    .registers 4
    .param p0, "value"    # F

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "rate_value"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_18} :catch_1e

    :goto_18
    const-string v0, "RATE"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method public static onRegister(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "method"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_23

    :goto_1d
    const-string v0, "REGISTER"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static onShare(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "channel"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "share_channel"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_success"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_23

    :goto_1d
    const-string v0, "SHARE"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static onUpdateLevel(I)V
    .registers 4
    .param p0, "level"    # I

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "level"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_18} :catch_1e

    :goto_18
    const-string v0, "UPDATE_LEVEL"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method public static onViewContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "content_type"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_name"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_24

    :goto_1e
    const-string v0, "VIEW_CONTENT"

    invoke-static {v0, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method
