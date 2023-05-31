.class Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe$Factory;
.super Ljava/lang/Object;
.source "StreamingXXHash64JavaUnsafe.java"

# interfaces
.implements Lcom/tds/xxhash/StreamingXXHash64$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tds/xxhash/StreamingXXHash64$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe$Factory;

    invoke-direct {v0}, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe$Factory;-><init>()V

    sput-object v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe$Factory;->INSTANCE:Lcom/tds/xxhash/StreamingXXHash64$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStreamingHash(J)Lcom/tds/xxhash/StreamingXXHash64;
    .registers 4
    .param p1, "seed"    # J

    .line 21
    new-instance v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;

    invoke-direct {v0, p1, p2}, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;-><init>(J)V

    return-object v0
.end method
