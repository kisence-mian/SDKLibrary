.class public final enum Lokhttp3/internal/framed/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/internal/framed/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/internal/framed/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lokhttp3/internal/framed/HeadersMode;

.field public static final enum SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

.field public static final enum SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 19
    new-instance v0, Lokhttp3/internal/framed/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    .line 20
    new-instance v1, Lokhttp3/internal/framed/HeadersMode;

    const-string v3, "SPDY_REPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lokhttp3/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    .line 21
    new-instance v3, Lokhttp3/internal/framed/HeadersMode;

    const-string v5, "SPDY_HEADERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lokhttp3/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    .line 22
    new-instance v5, Lokhttp3/internal/framed/HeadersMode;

    const-string v7, "HTTP_20_HEADERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lokhttp3/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lokhttp3/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    .line 18
    const/4 v7, 0x4

    new-array v7, v7, [Lokhttp3/internal/framed/HeadersMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lokhttp3/internal/framed/HeadersMode;->$VALUES:[Lokhttp3/internal/framed/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/framed/HeadersMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lokhttp3/internal/framed/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/HeadersMode;

    return-object v0
.end method

.method public static values()[Lokhttp3/internal/framed/HeadersMode;
    .registers 1

    .line 18
    sget-object v0, Lokhttp3/internal/framed/HeadersMode;->$VALUES:[Lokhttp3/internal/framed/HeadersMode;

    invoke-virtual {v0}, [Lokhttp3/internal/framed/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public failIfHeadersAbsent()Z
    .registers 2

    .line 38
    sget-object v0, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public failIfHeadersPresent()Z
    .registers 2

    .line 45
    sget-object v0, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public failIfStreamAbsent()Z
    .registers 2

    .line 26
    sget-object v0, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public failIfStreamPresent()Z
    .registers 2

    .line 31
    sget-object v0, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
