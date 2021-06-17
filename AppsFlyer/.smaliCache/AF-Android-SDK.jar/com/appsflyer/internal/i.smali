.class public final Lcom/appsflyer/internal/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field AFInAppEventParameterName:Ljava/lang/String;

.field AFInAppEventType:Ljava/lang/String;

.field private AFKeystoreWrapper:[B

.field valueOf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 4

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    iput-object p1, p0, Lcom/appsflyer/internal/i;->AFInAppEventType:Ljava/lang/String;

    .line 1025
    iput-object p2, p0, Lcom/appsflyer/internal/i;->AFKeystoreWrapper:[B

    .line 1026
    iput-object p3, p0, Lcom/appsflyer/internal/i;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1027
    return-void
.end method

.method constructor <init>([C)V
    .registers 8

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1031
    nop

    .line 1032
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1033
    :goto_10
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1034
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 1035
    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_2e

    .line 1036
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/internal/i;->AFInAppEventType:Ljava/lang/String;

    goto :goto_10

    .line 1037
    :cond_2e
    const-string v3, "version="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_67

    .line 1038
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/internal/i;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1039
    const-string v2, "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/i;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1042
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1044
    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1045
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1047
    :cond_66
    goto :goto_10

    :cond_67
    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1048
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1049
    if-gt p1, v4, :cond_83

    const/16 v3, 0xb

    if-ge v1, v3, :cond_83

    .line 1050
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_87

    :cond_83
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :goto_87
    iput-object v2, p0, Lcom/appsflyer/internal/i;->AFKeystoreWrapper:[B

    .line 1052
    :cond_89
    goto :goto_10

    .line 1053
    :cond_8a
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 1054
    return-void
.end method


# virtual methods
.method final values()[B
    .registers 2

    .line 1065
    iget-object v0, p0, Lcom/appsflyer/internal/i;->AFKeystoreWrapper:[B

    return-object v0
.end method
