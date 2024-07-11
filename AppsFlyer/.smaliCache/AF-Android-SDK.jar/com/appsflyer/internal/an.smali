.class public final Lcom/appsflyer/internal/an;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFInAppEventParameterName:Ljava/lang/String;

.field private static values:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFKeystoreWrapper(Ljava/lang/String;)V
    .registers 3

    .line 44
    sget-object v0, Lcom/appsflyer/internal/an;->values:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 45
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppsFlyerKey"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/an;->valueOf(Ljava/lang/String;)V

    .line 47
    :cond_11
    sget-object v0, Lcom/appsflyer/internal/an;->values:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 48
    sget-object v1, Lcom/appsflyer/internal/an;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 50
    :cond_1e
    return-void
.end method

.method static valueOf(Ljava/lang/String;)V
    .registers 4

    .line 29
    sput-object p0, Lcom/appsflyer/internal/an;->values:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 34
    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_19

    goto :goto_1f

    .line 37
    :cond_19
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 35
    :cond_1f
    :goto_1f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 40
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/appsflyer/internal/an;->AFInAppEventParameterName:Ljava/lang/String;

    .line 41
    return-void
.end method
