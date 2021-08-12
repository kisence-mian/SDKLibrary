.class final Lcom/ss/android/downloadlib/h/a$1;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/h/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 83
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->g()Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/ss/android/downloadlib/h/a;->b()V

    .line 85
    return-void
.end method
