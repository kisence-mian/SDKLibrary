.class final Lcom/appsflyer/internal/ad$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/String;

.field private final AFKeystoreWrapper:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/appsflyer/internal/ad$e;->AFInAppEventParameterName:Ljava/lang/String;

    .line 50
    iput-boolean p2, p0, Lcom/appsflyer/internal/ad$e;->AFKeystoreWrapper:Z

    .line 51
    return-void
.end method


# virtual methods
.method final values()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/appsflyer/internal/ad$e;->AFKeystoreWrapper:Z

    return v0
.end method
