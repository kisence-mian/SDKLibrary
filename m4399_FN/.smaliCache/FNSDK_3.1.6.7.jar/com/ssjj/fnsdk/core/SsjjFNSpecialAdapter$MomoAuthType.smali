.class public Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoAuthType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MomoAuthType"
.end annotation


# static fields
.field public static final TYPE_AUTH_ALL:I = 0x0

.field public static final TYPE_AUTH_NO:I = 0x1

.field public static final TYPE_AUTH_OK:I = 0x2


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter$MomoAuthType;->a:Lcom/ssjj/fnsdk/core/SsjjFNSpecialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
