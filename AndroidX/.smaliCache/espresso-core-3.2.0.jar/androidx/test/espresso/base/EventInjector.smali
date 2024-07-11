.class final Landroidx/test/espresso/base/EventInjector;
.super Ljava/lang/Object;
.source "EventInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Landroidx/test/espresso/base/EventInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/EventInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/base/EventInjectionStrategy;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injectionStrategy"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/EventInjectionStrategy;

    iput-object p1, p0, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    .line 37
    return-void
.end method


# virtual methods
.method injectKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    .line 50
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_30

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_31

    .line 50
    :cond_30
    move-wide v7, v2

    .line 54
    :goto_31
    cmp-long v2, v0, v5

    if-nez v2, :cond_37

    .line 55
    move-wide v5, v7

    goto :goto_38

    .line 54
    :cond_37
    move-wide v5, v0

    .line 60
    :goto_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_47

    .line 61
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v15, v4, 0x8

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    goto :goto_53

    .line 73
    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    .line 74
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v15, v4, 0x8

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 88
    :goto_53
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    invoke-interface {v2, v0}, Landroidx/test/espresso/base/EventInjectionStrategy;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method injectMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/base/EventInjectionStrategy;->injectMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method injectMotionEventAsync(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/base/EventInjectionStrategy;->injectMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method
