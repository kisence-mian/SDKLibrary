.class final synthetic Lcom/appsflyer/internal/af$7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic AFInAppEventParameterName:[I

.field static final synthetic AFKeystoreWrapper:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 3111
    invoke-static {}, Lcom/appsflyer/internal/bw$d;->values()[Lcom/appsflyer/internal/bw$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsflyer/internal/af$7;->AFKeystoreWrapper:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/appsflyer/internal/bw$d;->values:Lcom/appsflyer/internal/bw$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/appsflyer/internal/af$7;->AFKeystoreWrapper:[I

    sget-object v3, Lcom/appsflyer/internal/bw$d;->valueOf:Lcom/appsflyer/internal/bw$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    .line 703
    :goto_21
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->values()[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/appsflyer/internal/af$7;->AFInAppEventParameterName:[I

    :try_start_2a
    sget-object v3, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v1

    :goto_34
    :try_start_34
    sget-object v1, Lcom/appsflyer/internal/af$7;->AFInAppEventParameterName:[I

    sget-object v2, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception v0

    return-void
.end method
