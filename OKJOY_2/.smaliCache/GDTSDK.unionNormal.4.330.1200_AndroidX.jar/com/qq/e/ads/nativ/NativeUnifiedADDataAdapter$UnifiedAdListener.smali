.class Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnifiedAdListener"
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 4

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;

    invoke-static {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V

    return-void
.end method
