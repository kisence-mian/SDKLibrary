.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lokhttp3/Response;

.field public final networkRequest:Lokhttp3/Request;


# direct methods
.method private constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .registers 3
    .param p1, "networkRequest"    # Lokhttp3/Request;
    .param p2, "cacheResponse"    # Lokhttp3/Response;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    .line 58
    iput-object p2, p0, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/cache/CacheStrategy$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/Request;
    .param p2, "x1"    # Lokhttp3/Response;
    .param p3, "x2"    # Lokhttp3/internal/cache/CacheStrategy$1;

    .line 49
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-void
.end method

.method public static isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    .registers 5
    .param p0, "response"    # Lokhttp3/Response;
    .param p1, "request"    # Lokhttp3/Request;

    .line 65
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_4a

    goto :goto_48

    .line 85
    :sswitch_9
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    .line 86
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_32

    .line 87
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_32

    .line 88
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 89
    goto :goto_32

    .line 78
    :sswitch_31
    nop

    .line 99
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1

    .line 95
    :cond_48
    :goto_48
    return v1

    nop

    :sswitch_data_4a
    .sparse-switch
        0xc8 -> :sswitch_31
        0xcb -> :sswitch_31
        0xcc -> :sswitch_31
        0x12c -> :sswitch_31
        0x12d -> :sswitch_31
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_31
        0x194 -> :sswitch_31
        0x195 -> :sswitch_31
        0x19a -> :sswitch_31
        0x19e -> :sswitch_31
        0x1f5 -> :sswitch_31
    .end sparse-switch
.end method
