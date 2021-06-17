.class public Lcom/facebook/internal/InternalSettings;
.super Ljava/lang/Object;
.source "InternalSettings.java"


# static fields
.field private static final UNITY_PREFIX:Ljava/lang/String; = "Unity."

.field private static volatile mCustomUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomUserAgent()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/facebook/internal/InternalSettings;->mCustomUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static isUnityApp()Z
    .registers 2

    .line 42
    sget-object v0, Lcom/facebook/internal/InternalSettings;->mCustomUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/facebook/internal/InternalSettings;->mCustomUserAgent:Ljava/lang/String;

    const-string v1, "Unity."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static setCustomUserAgent(Ljava/lang/String;)V
    .registers 1
    .param p0, "customUserAgent"    # Ljava/lang/String;

    .line 34
    sput-object p0, Lcom/facebook/internal/InternalSettings;->mCustomUserAgent:Ljava/lang/String;

    .line 35
    return-void
.end method
