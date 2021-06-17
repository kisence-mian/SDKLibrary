.class final Lcom/appsflyer/internal/aj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/aj$b;,
        Lcom/appsflyer/internal/aj$d;
    }
.end annotation


# instance fields
.field private AFInAppEventParameterName:Lcom/appsflyer/internal/aj$b;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/appsflyer/internal/aj$4;

    invoke-direct {v0}, Lcom/appsflyer/internal/aj$4;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/aj;->AFInAppEventParameterName:Lcom/appsflyer/internal/aj$b;

    .line 19
    return-void
.end method

.method private AFKeystoreWrapper(Ljava/lang/String;)Z
    .registers 5

    .line 42
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/aj;->AFInAppEventParameterName:Lcom/appsflyer/internal/aj$b;

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/aj$b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is found."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1e} :catch_29
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 44
    const/4 p1, 0x1

    return p1

    .line 47
    :catchall_20
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return v0

    .line 45
    :catch_29
    move-exception p1

    .line 46
    return v0
.end method


# virtual methods
.method final values()Ljava/lang/String;
    .registers 6

    .line 32
    invoke-static {}, Lcom/appsflyer/internal/aj$d;->values()[Lcom/appsflyer/internal/aj$d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 33
    invoke-static {v3}, Lcom/appsflyer/internal/aj$d;->values(Lcom/appsflyer/internal/aj$d;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsflyer/internal/aj;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 34
    invoke-static {v3}, Lcom/appsflyer/internal/aj$d;->AFInAppEventType(Lcom/appsflyer/internal/aj$d;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 37
    :cond_1c
    sget-object v0, Lcom/appsflyer/internal/aj$d;->values:Lcom/appsflyer/internal/aj$d;

    invoke-static {v0}, Lcom/appsflyer/internal/aj$d;->AFInAppEventType(Lcom/appsflyer/internal/aj$d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
