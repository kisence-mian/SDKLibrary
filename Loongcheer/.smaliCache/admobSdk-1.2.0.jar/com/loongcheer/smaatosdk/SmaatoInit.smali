.class public Lcom/loongcheer/smaatosdk/SmaatoInit;
.super Ljava/lang/Object;
.source "SmaatoInit.java"


# static fields
.field private static smaatoInit:Lcom/loongcheer/smaatosdk/SmaatoInit;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/loongcheer/smaatosdk/SmaatoInit;
    .registers 1

    .line 23
    sget-object v0, Lcom/loongcheer/smaatosdk/SmaatoInit;->smaatoInit:Lcom/loongcheer/smaatosdk/SmaatoInit;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/loongcheer/smaatosdk/SmaatoInit;

    invoke-direct {v0}, Lcom/loongcheer/smaatosdk/SmaatoInit;-><init>()V

    sput-object v0, Lcom/loongcheer/smaatosdk/SmaatoInit;->smaatoInit:Lcom/loongcheer/smaatosdk/SmaatoInit;

    .line 26
    :cond_b
    sget-object v0, Lcom/loongcheer/smaatosdk/SmaatoInit;->smaatoInit:Lcom/loongcheer/smaatosdk/SmaatoInit;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;Landroid/app/Application;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "application"    # Landroid/app/Application;

    .line 30
    invoke-static {}, Lcom/smaato/sdk/core/Config;->builder()Lcom/smaato/sdk/core/Config$ConfigBuilder;

    move-result-object v0

    sget-object v1, Lcom/smaato/sdk/core/log/LogLevel;->ERROR:Lcom/smaato/sdk/core/log/LogLevel;

    .line 32
    invoke-virtual {v0, v1}, Lcom/smaato/sdk/core/Config$ConfigBuilder;->setLogLevel(Lcom/smaato/sdk/core/log/LogLevel;)Lcom/smaato/sdk/core/Config$ConfigBuilder;

    move-result-object v0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/sdk/core/Config$ConfigBuilder;->setHttpsOnly(Z)Lcom/smaato/sdk/core/Config$ConfigBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/smaato/sdk/core/Config$ConfigBuilder;->build()Lcom/smaato/sdk/core/Config;

    move-result-object v0

    .line 37
    .local v0, "config":Lcom/smaato/sdk/core/Config;
    invoke-static {p2, v0, p1}, Lcom/smaato/sdk/core/SmaatoSdk;->init(Landroid/app/Application;Lcom/smaato/sdk/core/Config;Ljava/lang/String;)V

    .line 41
    return-void
.end method
