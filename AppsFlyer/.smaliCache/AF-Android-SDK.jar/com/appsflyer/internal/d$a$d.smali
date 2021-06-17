.class public final Lcom/appsflyer/internal/d$a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final AFInAppEventType:Ljava/lang/Boolean;

.field public final valueOf:Ljava/lang/String;

.field values:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-object p1, p0, Lcom/appsflyer/internal/d$a$d;->valueOf:Ljava/lang/String;

    .line 1012
    iput-object p2, p0, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType:Ljava/lang/Boolean;

    .line 1013
    return-void
.end method

.method static AFInAppEventType(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static AFInAppEventType([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 515
    aget-byte v1, p0, v0

    rem-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2a

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_11
    return-object p0
.end method

.method static valueOf([B)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_26

    aget-byte v3, p0, v2

    .line 523
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 525
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    :cond_20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 528
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
