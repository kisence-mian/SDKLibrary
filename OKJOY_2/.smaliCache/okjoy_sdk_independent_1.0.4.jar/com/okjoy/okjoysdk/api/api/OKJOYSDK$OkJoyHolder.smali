.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$OkJoyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkJoyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$1;)V

    sput-object v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$OkJoyHolder;->INSTANCE:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$OkJoyHolder;->INSTANCE:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    return-object v0
.end method
