.class Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe$Factory;
.super Ljava/lang/Object;
.source "StreamingXXHash32JavaUnsafe.java"

# interfaces
.implements Lcom/tds/xxhash/StreamingXXHash32$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tds/xxhash/StreamingXXHash32$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe$Factory;

    invoke-direct {v0}, Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe$Factory;-><init>()V

    sput-object v0, Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe$Factory;->INSTANCE:Lcom/tds/xxhash/StreamingXXHash32$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStreamingHash(I)Lcom/tds/xxhash/StreamingXXHash32;
    .registers 3
    .param p1, "seed"    # I

    .line 21
    new-instance v0, Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe;

    invoke-direct {v0, p1}, Lcom/tds/xxhash/StreamingXXHash32JavaUnsafe;-><init>(I)V

    return-object v0
.end method
