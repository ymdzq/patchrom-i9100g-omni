.class Lcom/android/server/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1330
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1326
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 1331
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1334
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1335
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1338
    const-string v1, "notification_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1340
    const-string v1, "notification_light_pulse_default_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1342
    const-string v1, "notification_light_pulse_default_led_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1344
    const-string v1, "notification_light_pulse_default_led_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1346
    const-string v1, "notification_light_pulse_custom_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1348
    const-string v1, "notification_light_pulse_custom_values"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1350
    const-string v1, "screen_on_notification_led"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1352
    const-string v1, "quiet_hours_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1354
    const-string v1, "quiet_hours_start"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1356
    const-string v1, "quiet_hours_end"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1358
    const-string v1, "quiet_hours_mute"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1360
    const-string v1, "quiet_hours_still"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1362
    const-string v1, "quiet_hours_dim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1364
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1365
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1369
    invoke-virtual {p0, p2}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    .line 1371
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 1374
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1377
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v5, "notification_light_pulse"

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/NotificationManagerService;->access$2202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1382
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_color"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v1, v4}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;I)I

    .line 1387
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_led_on"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v1, v4}, Lcom/android/server/NotificationManagerService;->access$2402(Lcom/android/server/NotificationManagerService;I)I

    .line 1392
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_led_off"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v1, v4}, Lcom/android/server/NotificationManagerService;->access$2502(Lcom/android/server/NotificationManagerService;I)I

    .line 1397
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1398
    const-string v1, "notification_light_pulse_custom_enable"

    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "notification_light_pulse_custom_values"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/NotificationManagerService;->parseNotificationPulseCustomValuesString(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/NotificationManagerService;->access$2700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;)V

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "screen_on_notification_led"

    invoke-static {v0, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_5

    :goto_2
    # setter for: Lcom/android/server/NotificationManagerService;->mScreenOnNotificationLed:Z
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1410
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1411
    :cond_1
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    .line 1413
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1377
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1406
    goto :goto_2
.end method
