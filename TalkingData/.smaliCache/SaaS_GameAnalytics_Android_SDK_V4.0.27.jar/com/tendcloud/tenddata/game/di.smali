.class public Lcom/tendcloud/tenddata/game/di;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0xb

.field public static final g:I = 0xc

.field public static final h:I = 0xd

.field public static final i:I = 0xe

.field public static final j:I = 0xf

.field public static final k:I = 0x10

.field public static final l:I = 0x10


# instance fields
.field public m:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/di;->m:Ljava/util/Map;

    return-void
.end method
