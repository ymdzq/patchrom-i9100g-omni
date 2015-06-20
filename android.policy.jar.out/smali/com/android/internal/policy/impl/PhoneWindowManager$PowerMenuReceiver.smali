.class Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerMenuReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    .line 626
    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->registerSelf()V

    return-void
.end method

.method private registerSelf()V
    .locals 3

    .prologue
    .line 636
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    .line 639
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.POWERMENU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerMenuReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterSelf()V
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 650
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.POWERMENU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    .line 633
    :cond_0
    return-void
.end method
